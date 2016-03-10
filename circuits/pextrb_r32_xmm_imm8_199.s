  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vbroadcastss %xmm1, %xmm8           #  1     0     5      OPC=vbroadcastss_xmm_xmm     
  vcvttps2dq %ymm8, %ymm11            #  2     0x5   5      OPC=vcvttps2dq_ymm_ymm       
  movq $0x80, %rbx                    #  3     0xa   10     OPC=movq_r64_imm64           
  vpunpcklqdq %xmm1, %xmm11, %xmm1    #  4     0x14  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0x18  5      OPC=callq_label              
  xaddb %bl, %r9b                     #  6     0x1d  4      OPC=xaddb_r8_r8              
  retq                                #  7     0x21  1      OPC=retq                     
                                                                                         
.size target, .-target
