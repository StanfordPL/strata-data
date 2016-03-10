  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vdivss %xmm1, %xmm1, %xmm7           #  1     0     4      OPC=vdivss_xmm_xmm_xmm    
  vmovhlps %xmm7, %xmm7, %xmm1         #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x8   5      OPC=callq_label           
  vmovq %xmm13, %rbx                   #  4     0xd   5      OPC=vmovq_r64_xmm         
  retq                                 #  5     0x12  1      OPC=retq                  
                                                                                       
.size target, .-target
