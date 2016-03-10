  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x8, %r10          #  1     0     10     OPC=movq_r64_imm64   
  orq %r10, %r10           #  2     0xa   3      OPC=orq_r64_r64      
  callq .read_zf_into_rbx  #  3     0xd   5      OPC=callq_label      
  setc %bh                 #  4     0x12  3      OPC=setc_rh          
  xchgw %r10w, %cx         #  5     0x15  4      OPC=xchgw_r16_r16    
  popcntq %r10, %rcx       #  6     0x19  5      OPC=popcntq_r64_r64  
  xchgl %ecx, %ebx         #  7     0x1e  2      OPC=xchgl_r32_r32    
  retq                     #  8     0x20  1      OPC=retq             
                                                                      
.size target, .-target
