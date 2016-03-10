  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .write_cl_to_zf    #  1     0     5      OPC=callq_label      
  callq .read_zf_into_rbx  #  2     0x5   5      OPC=callq_label      
  xchgw %cx, %bx           #  3     0xa   3      OPC=xchgw_r16_r16    
  popcntq %rbx, %r15       #  4     0xd   5      OPC=popcntq_r64_r64  
  movb %cl, %bh            #  5     0x12  2      OPC=movb_rh_r8       
  xchgl %ebx, %r15d        #  6     0x14  3      OPC=xchgl_r32_r32    
  retq                     #  7     0x17  1      OPC=retq             
                                                                      
.size target, .-target
