  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  movddup %xmm2, %xmm3                      #  1     0     4      OPC=movddup_xmm_xmm   
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label       
  callq .move_r9b_to_byte_10_of_ymm1        #  3     0x9   5      OPC=callq_label       
  unpcklpd %xmm2, %xmm1                     #  4     0xe   4      OPC=unpcklpd_xmm_xmm  
  retq                                      #  5     0x12  1      OPC=retq              
                                                                                        
.size target, .-target
