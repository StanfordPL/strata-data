  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  movdqu %xmm1, %xmm0                  #  1     0     4      OPC=movdqu_xmm_xmm        
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  vbroadcastss %xmm11, %xmm3           #  3     0x9   5      OPC=vbroadcastss_xmm_xmm  
  punpckhdq %xmm0, %xmm3               #  4     0xe   4      OPC=punpckhdq_xmm_xmm     
  vpbroadcastb %xmm10, %xmm2           #  5     0x12  5      OPC=vpbroadcastb_xmm_xmm  
  vmovhlps %xmm3, %xmm2, %xmm11        #  6     0x17  4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label           
  retq                                 #  8     0x20  1      OPC=retq                  
                                                                                       
.size target, .-target
