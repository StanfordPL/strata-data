  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_zf_into_rcx            #  1     0     5      OPC=callq_label     
  callq .move_064_032_rcx_r12d_r13d  #  2     0x5   5      OPC=callq_label     
  movslq %ecx, %rax                  #  3     0xa   3      OPC=movslq_r64_r32  
  orl %eax, %r13d                    #  4     0xd   3      OPC=orl_r32_r32     
  seta %ah                           #  5     0x10  3      OPC=seta_rh         
  retq                               #  6     0x13  1      OPC=retq            
                                                                               
.size target, .-target
