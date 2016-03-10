  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffc0, %rax  #  1     0     10     OPC=movq_r64_imm64  
  callq .read_zf_into_rcx         #  2     0xa   5      OPC=callq_label     
  adcl %ecx, %ecx                 #  3     0xf   2      OPC=adcl_r32_r32    
  setnz %ah                       #  4     0x11  3      OPC=setnz_rh        
  orq %rcx, %rax                  #  5     0x14  3      OPC=orq_r64_r64     
  retq                            #  6     0x17  1      OPC=retq            
                                                                            
.size target, .-target
