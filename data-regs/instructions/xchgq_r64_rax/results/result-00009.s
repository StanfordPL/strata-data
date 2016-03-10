  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode              
.target:                  #        0    0      OPC=<label>         
  callq .set_szp_for_ebx  #  1     0    5      OPC=callq_label     
  xchgq %rax, %rbx        #  2     0x5  3      OPC=xchgq_r64_r64   
  cmovsw %bx, %bx         #  3     0x8  4      OPC=cmovsw_r16_r16  
  retq                    #  4     0xc  1      OPC=retq            
                                                                   
.size target, .-target
