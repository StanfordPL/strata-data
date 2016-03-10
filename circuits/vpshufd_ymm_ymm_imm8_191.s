  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                      
.target:                                    #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm1                    #  1     0     4      OPC=vmovsldup_ymm_ymm       
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label             
  salb $0x1, %r9b                           #  3     0x9   3      OPC=salb_r8_one             
  vpunpckhdq %ymm1, %ymm2, %ymm12           #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovshdup %ymm2, %ymm1                    #  5     0x10  4      OPC=vmovshdup_ymm_ymm       
  callq .move_r9b_to_byte_17_of_ymm1        #  6     0x14  5      OPC=callq_label             
  vpunpckhdq %ymm12, %ymm1, %ymm1           #  7     0x19  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                                      #  8     0x1e  1      OPC=retq                    
                                                                                              
.size target, .-target
