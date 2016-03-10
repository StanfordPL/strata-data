  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                        
.target:                                    #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label               
  vfnmsub213ss %xmm1, %xmm1, %xmm1          #  2     0x5   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .move_r8b_to_byte_10_of_ymm1        #  3     0xa   5      OPC=callq_label               
  movmskpd %xmm1, %rbx                      #  4     0xf   4      OPC=movmskpd_r64_xmm          
  retq                                      #  5     0x13  1      OPC=retq                      
                                                                                                
.size target, .-target
