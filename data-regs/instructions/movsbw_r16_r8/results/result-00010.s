  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movsbl %cl, %r9d         #  1     0     4      OPC=movsbl_r32_r8  
  movzbw %cl, %cx          #  2     0x4   4      OPC=movzbw_r16_r8  
  rolb $0x1, %cl           #  3     0x8   2      OPC=rolb_r8_one    
  callq .read_cf_into_rbx  #  4     0xa   5      OPC=callq_label    
  xchgl %r9d, %ebx         #  5     0xf   3      OPC=xchgl_r32_r32  
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
