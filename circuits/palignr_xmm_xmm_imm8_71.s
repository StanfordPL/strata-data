  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vcvtss2sd %xmm2, %xmm2, %xmm2             #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label            
  callq .move_r8b_to_byte_3_of_ymm1         #  3     0x9   5      OPC=callq_label            
  cvtpd2ps %xmm1, %xmm1                     #  4     0xe   4      OPC=cvtpd2ps_xmm_xmm       
  punpckhqdq %xmm1, %xmm1                   #  5     0x12  4      OPC=punpckhqdq_xmm_xmm     
  retq                                      #  6     0x16  1      OPC=retq                   
                                                                                             
.size target, .-target
