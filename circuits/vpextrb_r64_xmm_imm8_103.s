  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm9, %rbx                           #  2     0x5   5      OPC=vmovmskpd_r64_xmm  
  rolb $0x1, %bl                                  #  3     0xa   2      OPC=rolb_r8_one        
  callq .move_byte_7_of_ymm1_to_r8b               #  4     0xc   5      OPC=callq_label        
  xchgb %bl, %r8b                                 #  5     0x11  3      OPC=xchgb_r8_r8        
  retq                                            #  6     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
