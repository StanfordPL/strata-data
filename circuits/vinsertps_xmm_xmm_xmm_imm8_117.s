  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmulsd %xmm6, %xmm6, %xmm1                    #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm     
  callq .move_byte_2_of_ymm1_to_r9b             #  3     0x9   5      OPC=callq_label            
  callq .move_r9b_to_byte_14_of_ymm1            #  4     0xe   5      OPC=callq_label            
  vmovq %xmm3, %xmm15                           #  5     0x13  4      OPC=vmovq_xmm_xmm          
  movshdup %xmm15, %xmm12                       #  6     0x17  5      OPC=movshdup_xmm_xmm       
  vunpcklps %xmm12, %xmm5, %xmm0                #  7     0x1c  5      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklps %xmm0, %xmm1                         #  8     0x21  3      OPC=unpcklps_xmm_xmm       
  retq                                          #  9     0x24  1      OPC=retq                   
                                                                                                 
.size target, .-target
