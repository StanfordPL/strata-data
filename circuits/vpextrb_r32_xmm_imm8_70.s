  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  cvtpd2ps %xmm1, %xmm4              #  1     0     4      OPC=cvtpd2ps_xmm_xmm   
  cvttpd2dq %xmm4, %xmm3             #  2     0x4   4      OPC=cvttpd2dq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11   #  3     0x8   5      OPC=callq_label        
  popcntl %r11d, %ebx                #  4     0xd   5      OPC=popcntl_r32_r32    
  addb %bh, %bh                      #  5     0x12  2      OPC=addb_rh_rh         
  callq .move_byte_6_of_ymm1_to_r9b  #  6     0x14  5      OPC=callq_label        
  movb %r9b, %bl                     #  7     0x19  3      OPC=movb_r8_r8         
  retq                               #  8     0x1c  1      OPC=retq               
                                                                                  
.size target, .-target
