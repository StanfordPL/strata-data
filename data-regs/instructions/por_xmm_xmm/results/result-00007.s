  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vorpd %xmm2, %xmm1, %xmm7                 #  1     0     4      OPC=vorpd_xmm_xmm_xmm  
  movdqa %xmm7, %xmm1                       #  2     0x4   4      OPC=movdqa_xmm_xmm     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label        
  callq .move_r8b_to_byte_8_of_ymm1         #  4     0xd   5      OPC=callq_label        
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
