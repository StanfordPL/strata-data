  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_064_xmm3_r8_r9       #  1     0     5      OPC=callq_label       
  orq %r8, %r8                         #  2     0x5   3      OPC=orq_r64_r64       
  callq .move_064_128_r8_r9_xmm1       #  3     0x8   5      OPC=callq_label       
  callq .move_128_64_xmm2_xmm12_xmm13  #  4     0xd   5      OPC=callq_label       
  vmovddup %xmm1, %xmm1                #  5     0x12  4      OPC=vmovddup_xmm_xmm  
  movsd %xmm13, %xmm1                  #  6     0x16  5      OPC=movsd_xmm_xmm     
  retq                                 #  7     0x1b  1      OPC=retq              
                                                                                   
.size target, .-target
