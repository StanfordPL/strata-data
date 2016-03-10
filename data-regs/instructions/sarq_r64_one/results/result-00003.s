  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  movq $0xfffffffffffffffe, %r13  #  1     0     10     OPC=movq_r64_imm64     
  orl %ebx, %r13d                 #  2     0xa   3      OPC=orl_r32_r32        
  callq .read_sf_into_rcx         #  3     0xd   5      OPC=callq_label        
  xaddb %r13b, %cl                #  4     0x12  4      OPC=xaddb_r8_r8        
  cmovaw %r13w, %r13w             #  5     0x16  5      OPC=cmovaw_r16_r16     
  sarxq %r13, %rbx, %rbx          #  6     0x1b  5      OPC=sarxq_r64_r64_r64  
  callq .set_szp_for_rbx          #  7     0x20  5      OPC=callq_label        
  retq                            #  8     0x25  1      OPC=retq               
                                                                               
.size target, .-target
