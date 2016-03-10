  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                    
.target:                           #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label           
  callq .move_032_064_r8d_r9d_rcx  #  2     0x5   5      OPC=callq_label           
  vmovq %rcx, %xmm6                #  3     0xa   5      OPC=vmovq_xmm_r64         
  vbroadcastss %xmm2, %xmm1        #  4     0xf   5      OPC=vbroadcastss_xmm_xmm  
  vmovlhps %xmm6, %xmm1, %xmm1     #  5     0x14  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                             #  6     0x18  1      OPC=retq                  
                                                                                   
.size target, .-target
