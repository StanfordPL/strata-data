  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovupd %xmm1, %xmm2              #  1     0     4      OPC=vmovupd_xmm_xmm  
  movq $0x8, %rbx                   #  2     0x4   10     OPC=movq_r64_imm64   
  callq .move_128_064_xmm2_r10_r11  #  3     0xe   5      OPC=callq_label      
  bswap %r10d                       #  4     0x13  3      OPC=bswap_r32        
  xchgb %r10b, %bl                  #  5     0x16  3      OPC=xchgb_r8_r8      
  retq                              #  6     0x19  1      OPC=retq             
                                                                               
.size target, .-target
