  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vaddpd %xmm2, %xmm1, %xmm2                #  2     0x5   4      OPC=vaddpd_xmm_xmm_xmm     
  callq .move_byte_5_of_ymm1_to_r9b         #  3     0x9   5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm2, %xmm9             #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm  
  xchgb %al, %r9b                           #  5     0x12  3      OPC=xchgb_r8_r8            
  callq .move_r9b_to_byte_3_of_ymm1         #  6     0x15  5      OPC=callq_label            
  movsd %xmm9, %xmm1                        #  7     0x1a  5      OPC=movsd_xmm_xmm          
  retq                                      #  8     0x1f  1      OPC=retq                   
                                                                                             
.size target, .-target
