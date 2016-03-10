  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm3            #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label        
  movq $0x20, %rbx                  #  3     0xa   10     OPC=movq_r64_imm64     
  movb %r11b, %bl                   #  4     0x14  3      OPC=movb_r8_r8         
  retq                              #  5     0x17  1      OPC=retq               
                                                                                 
.size target, .-target
