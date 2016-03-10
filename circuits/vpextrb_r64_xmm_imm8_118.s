  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmaxps %xmm1, %xmm1, %xmm4                #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vpmovzxwd %xmm4, %xmm2                    #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label         
  movzbl %r9b, %ebx                         #  4     0xe   4      OPC=movzbl_r32_r8       
  retq                                      #  5     0x12  1      OPC=retq                
                                                                                          
.size target, .-target
