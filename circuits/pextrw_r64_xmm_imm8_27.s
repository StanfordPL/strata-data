  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vmovlhps %xmm1, %xmm1, %xmm1                    #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  vpmovzxwq %xmm11, %xmm1                         #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm     
  vmovmskpd %xmm1, %rbx                           #  4     0xe   4      OPC=vmovmskpd_r64_xmm     
  callq .move_128_064_xmm1_r10_r11                #  5     0x12  5      OPC=callq_label           
  salw $0x1, %bx                                  #  6     0x17  3      OPC=salw_r16_one          
  cmovnaw %r11w, %bx                              #  7     0x1a  5      OPC=cmovnaw_r16_r16       
  retq                                            #  8     0x1f  1      OPC=retq                  
                                                                                                  
.size target, .-target
