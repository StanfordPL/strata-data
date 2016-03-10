  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm3          #  1     0     4      OPC=vmovshdup_xmm_xmm  
  movq $0x8, %rbx                 #  2     0x4   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm3_r8_r9  #  3     0xe   5      OPC=callq_label        
  xchgw %r8w, %bx                 #  4     0x13  4      OPC=xchgw_r16_r16      
  retq                            #  5     0x17  1      OPC=retq               
                                                                               
.size target, .-target
