  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vpmovzxwd %xmm1, %ymm0                        #  1     0     5      OPC=vpmovzxwd_ymm_xmm   
  vminpd %xmm0, %xmm0, %xmm1                    #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label         
  movq $0x5, %rbx                               #  4     0xe   10     OPC=movq_r64_imm64      
  xaddw %bx, %r11w                              #  5     0x18  5      OPC=xaddw_r16_r16       
  retq                                          #  6     0x1d  1      OPC=retq                
                                                                                              
.size target, .-target
