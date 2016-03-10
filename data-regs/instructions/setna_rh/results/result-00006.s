  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rsp  #  1     0     10     OPC=movq_r64_imm64  
  setbe %ch                       #  2     0xa   3      OPC=setbe_rh        
  setbe %cl                       #  3     0xd   3      OPC=setbe_r8        
  movslq %esp, %rax               #  4     0x10  3      OPC=movslq_r64_r32  
  xaddw %ax, %cx                  #  5     0x13  4      OPC=xaddw_r16_r16   
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
