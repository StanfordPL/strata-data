  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm2          #  1     0     5      OPC=vpmovzxdq_ymm_xmm  
  movq $0x0, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm2_r8_r9  #  3     0xf   5      OPC=callq_label        
  movzwq %r9w, %rcx               #  4     0x14  4      OPC=movzwq_r64_r16     
  xchgb %cl, %bl                  #  5     0x18  2      OPC=xchgb_r8_r8        
  retq                            #  6     0x1a  1      OPC=retq               
                                                                               
.size target, .-target
