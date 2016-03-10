  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  movd %ebx, %xmm6                    #  1     0     4      OPC=movd_xmm_r32           
  orb %bl, %bh                        #  2     0x4   2      OPC=orb_rh_r8              
  movddup %xmm6, %xmm0                #  3     0x6   4      OPC=movddup_xmm_xmm        
  vunpckhps %xmm0, %xmm2, %xmm3       #  4     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklpd %xmm3, %xmm2, %xmm1       #  5     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  setle %bh                           #  6     0x12  3      OPC=setle_rh               
  callq .move_byte_3_of_rbx_to_r9b    #  7     0x15  5      OPC=callq_label            
  callq .move_r9b_to_byte_15_of_ymm1  #  8     0x1a  5      OPC=callq_label            
  retq                                #  9     0x1f  1      OPC=retq                   
                                                                                       
.size target, .-target
