  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rax  #  1     0     10     OPC=movq_r64_imm64  
  movzwl %ax, %edi                #  2     0xa   3      OPC=movzwl_r32_r16  
  adcl %edi, %eax                 #  3     0xd   2      OPC=adcl_r32_r32    
  rolq $0x1, %rax                 #  4     0xf   3      OPC=rolq_r64_one    
  shlw $0x1, %ax                  #  5     0x12  3      OPC=shlw_r16_one    
  setpo %ah                       #  6     0x15  3      OPC=setpo_rh        
  retq                            #  7     0x18  1      OPC=retq            
                                                                            
.size target, .-target
