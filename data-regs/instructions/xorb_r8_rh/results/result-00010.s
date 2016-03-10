  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %rcx, %rcx          #  1     0     3      OPC=xorq_r64_r64   
  movsbl %bl, %r14d        #  2     0x3   4      OPC=movsbl_r32_r8  
  callq .read_of_into_rbx  #  3     0x7   5      OPC=callq_label    
  movsbw %ah, %bp          #  4     0xc   4      OPC=movsbw_r16_rh  
  xorw %r14w, %bp          #  5     0x10  4      OPC=xorw_r16_r16   
  shll $0x1, %ebx          #  6     0x14  2      OPC=shll_r32_one   
  xaddb %bpl, %bl          #  7     0x16  4      OPC=xaddb_r8_r8    
  retq                     #  8     0x1a  1      OPC=retq           
                                                                    
.size target, .-target
