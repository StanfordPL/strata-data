  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq %xmm1, %rbp                   #  1     0     5      OPC=movq_r64_xmm    
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  xorb %bl, %bpl                     #  3     0xf   2      OPC=xorb_r8_r8      
  callq .move_032_016_ebx_r8w_r9w    #  4     0x11  5      OPC=callq_label     
  callq .move_r8b_to_byte_0_of_ymm1  #  5     0x16  5      OPC=callq_label     
  movd %xmm1, %ebx                   #  6     0x1b  4      OPC=movd_r32_xmm    
  addb %bpl, %bl                     #  7     0x1f  3      OPC=addb_r8_r8      
  retq                               #  8     0x22  1      OPC=retq            
                                                                               
.size target, .-target
