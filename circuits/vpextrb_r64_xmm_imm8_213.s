  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vminpd %xmm1, %xmm1, %xmm14                   #  1     0     4      OPC=vminpd_xmm_xmm_xmm       
  vcvtpd2ps %ymm14, %xmm2                       #  2     0x4   5      OPC=vcvtpd2ps_xmm_ymm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label              
  vfmadd231ss %xmm6, %xmm7, %xmm1               #  4     0xe   5      OPC=vfmadd231ss_xmm_xmm_xmm  
  movq $0x5, %rbx                               #  5     0x13  10     OPC=movq_r64_imm64           
  callq .move_byte_5_of_ymm1_to_r8b             #  6     0x1d  5      OPC=callq_label              
  movb %r8b, %bl                                #  7     0x22  3      OPC=movb_r8_r8               
  retq                                          #  8     0x25  1      OPC=retq                     
                                                                                                   
.size target, .-target
