  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .read_zf_into_rbx          #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rcx          #  2     0x5   5      OPC=callq_label    
  movzbq %bl, %rax                 #  3     0xa   4      OPC=movzbq_r64_r8  
  callq .move_032_016_ecx_r8w_r9w  #  4     0xe   5      OPC=callq_label    
  xchgb %al, %r9b                  #  5     0x13  3      OPC=xchgb_r8_r8    
  shlw $0x1, %ax                   #  6     0x16  3      OPC=shlw_r16_one   
  xaddb %cl, %ah                   #  7     0x19  3      OPC=xaddb_rh_r8    
  retq                             #  8     0x1c  1      OPC=retq           
                                                                            
.size target, .-target
