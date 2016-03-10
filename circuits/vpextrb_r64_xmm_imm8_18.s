  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  2     0x5   5      OPC=callq_label        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  movq $0x20, %rbx                              #  4     0xf   10     OPC=movq_r64_imm64     
  orb %dh, %bl                                  #  5     0x19  2      OPC=orb_r8_rh          
  xchgb %r11b, %bl                              #  6     0x1b  3      OPC=xchgb_r8_r8        
  retq                                          #  7     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
