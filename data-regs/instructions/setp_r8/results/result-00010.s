  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label     
  movzbl %bl, %edx         #  2     0x5   3      OPC=movzbl_r32_r8   
  movslq %edx, %rdi        #  3     0x8   3      OPC=movslq_r64_r32  
  decb %dil                #  4     0xb   3      OPC=decb_r8         
  sete %bl                 #  5     0xe   3      OPC=sete_r8         
  retq                     #  6     0x11  1      OPC=retq            
                                                                     
.size target, .-target
