  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0x8, %r14                 #  1     0     10     OPC=movq_r64_imm64  
  rclb $0x1, %r14b                #  2     0xa   3      OPC=rclb_r8_one     
  movq $0xfffffffffffffffe, %rbx  #  3     0xd   10     OPC=movq_r64_imm64  
  movsbl %r14b, %r8d              #  4     0x17  4      OPC=movsbl_r32_r8   
  salw $0x1, %r8w                 #  5     0x1b  4      OPC=salw_r16_one    
  sete %bl                        #  6     0x1f  3      OPC=sete_r8         
  orl %r8d, %ebx                  #  7     0x22  3      OPC=orl_r32_r32     
  setpo %bl                       #  8     0x25  3      OPC=setpo_r8        
  retq                            #  9     0x28  1      OPC=retq            
                                                                            
.size target, .-target
