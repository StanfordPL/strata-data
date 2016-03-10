  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  vzeroall                                        #  1     0     3      OPC=vzeroall        
  movslq %ebx, %rdx                               #  2     0x3   3      OPC=movslq_r64_r32  
  vmovq %rdx, %xmm8                               #  3     0x6   5      OPC=vmovq_xmm_r64   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xb   5      OPC=callq_label     
  retq                                            #  5     0x10  1      OPC=retq            
                                                                                            
.size target, .-target
