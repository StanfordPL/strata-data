  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label    
  vzeroall                          #  2     0x5   3      OPC=vzeroall       
  vmovd %ebx, %xmm7                 #  3     0x8   4      OPC=vmovd_xmm_r32  
  andw %bx, %r12w                   #  4     0xc   4      OPC=andw_r16_r16   
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label    
  movss %xmm7, %xmm1                #  6     0x15  4      OPC=movss_xmm_xmm  
  retq                              #  7     0x19  1      OPC=retq           
                                                                             
.size target, .-target
