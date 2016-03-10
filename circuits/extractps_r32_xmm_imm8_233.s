  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64     
  movb %bh, %bl                     #  2     0xa   2      OPC=movb_r8_rh         
  vpmovzxdq %xmm1, %ymm2            #  3     0xc   5      OPC=vpmovzxdq_ymm_xmm  
  andb %bl, %bh                     #  4     0x11  2      OPC=andb_rh_r8         
  callq .move_128_064_xmm2_r12_r13  #  5     0x13  5      OPC=callq_label        
  xaddl %ebx, %r13d                 #  6     0x18  4      OPC=xaddl_r32_r32      
  retq                              #  7     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
