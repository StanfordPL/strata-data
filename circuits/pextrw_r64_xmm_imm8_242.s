  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm9, %xmm1                          #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  movq $0x4, %rbx                                 #  3     0xa   10     OPC=movq_r64_imm64     
  movb %bh, %bl                                   #  4     0x14  2      OPC=movb_r8_rh         
  movd %xmm1, %ebp                                #  5     0x16  4      OPC=movd_r32_xmm       
  addw %bp, %bx                                   #  6     0x1a  3      OPC=addw_r16_r16       
  retq                                            #  7     0x1d  1      OPC=retq               
                                                                                               
.size target, .-target
