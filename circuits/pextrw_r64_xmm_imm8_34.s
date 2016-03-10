  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq $0x0, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d      #  3     0xf   5      OPC=callq_label        
  vpmovzxwq %xmm5, %ymm5                        #  4     0x14  5      OPC=vpmovzxwq_ymm_xmm  
  andb %dl, %r8b                                #  5     0x19  3      OPC=andb_r8_r8         
  movd %xmm5, %r8d                              #  6     0x1c  5      OPC=movd_r32_xmm       
  adcw %r8w, %bx                                #  7     0x21  4      OPC=adcw_r16_r16       
  retq                                          #  8     0x25  1      OPC=retq               
                                                                                             
.size target, .-target
