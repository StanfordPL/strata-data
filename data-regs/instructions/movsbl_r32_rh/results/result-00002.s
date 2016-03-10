  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %r8, %r8            #  1     0     3      OPC=xorq_r64_r64   
  callq .read_pf_into_rbx  #  2     0x3   5      OPC=callq_label    
  movzbl %bl, %ebx         #  3     0x8   3      OPC=movzbl_r32_r8  
  xaddb %bl, %ah           #  4     0xb   3      OPC=xaddb_rh_r8    
  movsbl %bl, %r8d         #  5     0xe   4      OPC=movsbl_r32_r8  
  xchgl %r8d, %ebx         #  6     0x12  3      OPC=xchgl_r32_r32  
  retq                     #  7     0x15  1      OPC=retq           
                                                                    
.size target, .-target
