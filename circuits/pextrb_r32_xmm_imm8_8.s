  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  punpcklqdq %xmm10, %xmm11                       #  2     0x5   5      OPC=punpcklqdq_xmm_xmm     
  vunpckhps %xmm11, %xmm11, %xmm1                 #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  movq $0x80, %rbx                                #  4     0xf   10     OPC=movq_r64_imm64         
  xorw %bx, %bx                                   #  5     0x19  3      OPC=xorw_r16_r16           
  callq .move_byte_0_of_ymm1_to_r8b               #  6     0x1c  5      OPC=callq_label            
  xaddb %r8b, %bl                                 #  7     0x21  4      OPC=xaddb_r8_r8            
  retq                                            #  8     0x25  1      OPC=retq                   
                                                                                                   
.size target, .-target
