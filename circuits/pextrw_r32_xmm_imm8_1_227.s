  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                    #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  movmskpd %xmm1, %rbx                      #  2     0x5   4      OPC=movmskpd_r64_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  xorw %r9w, %bx                            #  4     0xe   4      OPC=xorw_r16_r16       
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
