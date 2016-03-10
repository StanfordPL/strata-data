  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode              
.target:                               #        0    0      OPC=<label>         
  movaps %xmm1, %xmm3                  #  1     0    3      OPC=movaps_xmm_xmm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x3  5      OPC=callq_label     
  vmovd %xmm11, %esi                   #  3     0x8  4      OPC=vmovd_r32_xmm   
  movq %rsi, %rbx                      #  4     0xc  3      OPC=movq_r64_r64    
  retq                                 #  5     0xf  1      OPC=retq            
                                                                                
.size target, .-target
