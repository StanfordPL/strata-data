  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vhsubpd %xmm10, %xmm10, %xmm0        #  2     0x5   5      OPC=vhsubpd_xmm_xmm_xmm    
  vmaxss %xmm2, %xmm0, %xmm13          #  3     0xa   4      OPC=vmaxss_xmm_xmm_xmm     
  callq .move_016_008_bx_r8b_r9b       #  4     0xe   5      OPC=callq_label            
  vcvtsd2ss %xmm13, %xmm11, %xmm1      #  5     0x13  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  movupd %xmm2, %xmm1                  #  6     0x18  4      OPC=movupd_xmm_xmm         
  callq .move_r9b_to_byte_3_of_ymm1    #  7     0x1c  5      OPC=callq_label            
  callq .move_r8b_to_byte_2_of_ymm1    #  8     0x21  5      OPC=callq_label            
  retq                                 #  9     0x26  1      OPC=retq                   
                                                                                        
.size target, .-target
