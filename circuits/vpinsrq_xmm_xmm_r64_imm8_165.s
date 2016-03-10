  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq %rbx, %r9                  #  1     0     3      OPC=movq_r64_r64     
  vmovq %xmm2, %r8                #  2     0x3   5      OPC=vmovq_r64_xmm    
  vzeroall                        #  3     0x8   3      OPC=vzeroall         
  vmovups %xmm15, %xmm1           #  4     0xb   5      OPC=vmovups_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  5     0x10  5      OPC=callq_label      
  retq                            #  6     0x15  1      OPC=retq             
                                                                             
.size target, .-target
