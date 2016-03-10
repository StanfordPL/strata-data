  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vcvtpd2ps %xmm1, %xmm5              #  1     0     4      OPC=vcvtpd2ps_xmm_xmm        
  vfmsub213ss %xmm5, %xmm5, %xmm1     #  2     0x4   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  callq .move_byte_12_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label              
  movzbl %r8b, %ebx                   #  4     0xe   4      OPC=movzbl_r32_r8            
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
