  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vcvtpd2ps %xmm1, %xmm3                    #  1     0     4      OPC=vcvtpd2ps_xmm_xmm        
  vpsubq %xmm3, %xmm1, %xmm15               #  2     0x4   4      OPC=vpsubq_xmm_xmm_xmm       
  vunpcklps %xmm15, %xmm3, %xmm5            #  3     0x8   5      OPC=vunpcklps_xmm_xmm_xmm    
  vfmsub132ss %xmm5, %xmm3, %xmm3           #  4     0xd   5      OPC=vfmsub132ss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  5     0x12  5      OPC=callq_label              
  xchgl %ebx, %r9d                          #  6     0x17  3      OPC=xchgl_r32_r32            
  callq .move_r9b_to_byte_13_of_ymm1        #  7     0x1a  5      OPC=callq_label              
  retq                                      #  8     0x1f  1      OPC=retq                     
                                                                                               
.size target, .-target
