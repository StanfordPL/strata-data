  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vxorpd %xmm2, %xmm2, %xmm0                #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxwd %xmm0, %xmm1                     #  3     0x9   5      OPC=pmovzxwd_xmm_xmm    
  shlb $0x1, %ah                            #  4     0xe   2      OPC=shlb_rh_one         
  callq .move_r8b_to_byte_15_of_ymm1        #  5     0x10  5      OPC=callq_label         
  movzwq %ax, %r8                           #  6     0x15  4      OPC=movzwq_r64_r16      
  callq .move_r8b_to_byte_7_of_ymm1         #  7     0x19  5      OPC=callq_label         
  retq                                      #  8     0x1e  1      OPC=retq                
                                                                                          
.size target, .-target
