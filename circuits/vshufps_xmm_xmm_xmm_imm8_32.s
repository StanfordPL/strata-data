  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm2, %xmm7                #  2     0x5   4      OPC=movsldup_xmm_xmm        
  vpbroadcastd %xmm3, %xmm2            #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm3, %xmm10, %xmm9      #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %ymm2, %ymm9, %ymm1        #  5     0x12  4      OPC=vunpcklps_ymm_ymm_ymm   
  movsd %xmm7, %xmm1                   #  6     0x16  4      OPC=movsd_xmm_xmm           
  retq                                 #  7     0x1a  1      OPC=retq                    
                                                                                         
.size target, .-target
