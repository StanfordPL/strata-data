  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  vpmovzxbd %xmm1, %xmm3                    #  1     0    5      OPC=vpmovzxbd_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5  5      OPC=callq_label        
  movzbl %r8b, %ebx                         #  3     0xa  4      OPC=movzbl_r32_r8      
  retq                                      #  4     0xe  1      OPC=retq               
                                                                                        
.size target, .-target
