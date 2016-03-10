  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x6, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d    #  2     0xa   5      OPC=callq_label     
  shll $0x1, %r8d                    #  3     0xf   3      OPC=shll_r32_one    
  callq .move_byte_7_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label     
  cmovaw %r8w, %bx                   #  5     0x17  5      OPC=cmovaw_r16_r16  
  setng %bh                          #  6     0x1c  3      OPC=setng_rh        
  retq                               #  7     0x1f  1      OPC=retq            
                                                                               
.size target, .-target
