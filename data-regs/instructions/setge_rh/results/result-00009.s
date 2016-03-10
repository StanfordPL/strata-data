  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffb, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setge %dl                       #  2     0xa   3      OPC=setge_r8        
  xorb %dl, %al                   #  3     0xd   2      OPC=xorb_r8_r8      
  xaddl %eax, %eax                #  4     0xf   3      OPC=xaddl_r32_r32   
  setpo %ch                       #  5     0x12  3      OPC=setpo_rh        
  movb %ch, %ah                   #  6     0x15  2      OPC=movb_rh_rh      
  retq                            #  7     0x17  1      OPC=retq            
                                                                            
.size target, .-target
