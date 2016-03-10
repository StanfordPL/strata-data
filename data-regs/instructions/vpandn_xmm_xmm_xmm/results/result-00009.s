  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vxorps %xmm13, %xmm13, %xmm1        #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  andnpd %xmm3, %xmm2                 #  2     0x5   4      OPC=andnpd_xmm_xmm      
  callq .move_byte_8_of_ymm1_to_r9b   #  3     0x9   5      OPC=callq_label         
  callq .move_r9b_to_byte_23_of_ymm1  #  4     0xe   5      OPC=callq_label         
  xorpd %xmm2, %xmm1                  #  5     0x13  4      OPC=xorpd_xmm_xmm       
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
