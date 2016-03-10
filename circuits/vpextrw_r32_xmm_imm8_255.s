  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11       #  1     0     5      OPC=callq_label       
  pmovzxwd %xmm11, %xmm2                    #  2     0x5   6      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xb   5      OPC=callq_label       
  movzwl %r9w, %ebx                         #  4     0x10  4      OPC=movzwl_r32_r16    
  retq                                      #  5     0x14  1      OPC=retq              
                                                                                        
.size target, .-target
