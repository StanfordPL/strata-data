  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0x0, %rax                 #  1     0     10     OPC=movq_r64_imm64  
  setle %al                       #  2     0xa   3      OPC=setle_r8        
  movq $0xffffffffffffffc0, %r13  #  3     0xd   10     OPC=movq_r64_imm64  
  notw %ax                        #  4     0x17  3      OPC=notw_r16        
  xorl %r13d, %eax                #  5     0x1a  3      OPC=xorl_r32_r32    
  setpe %ah                       #  6     0x1d  3      OPC=setpe_rh        
  retq                            #  7     0x20  1      OPC=retq            
                                                                            
.size target, .-target
