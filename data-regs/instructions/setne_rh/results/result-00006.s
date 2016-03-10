  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label     
  decb %bl                 #  2     0x5  2      OPC=decb_r8         
  movslq %ebx, %rax        #  3     0x7  3      OPC=movslq_r64_r32  
  rolw $0x1, %ax           #  4     0xa  3      OPC=rolw_r16_one    
  retq                     #  5     0xd  1      OPC=retq            
                                                                    
.size target, .-target
