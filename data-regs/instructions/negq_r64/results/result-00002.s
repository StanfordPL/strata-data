  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                      #  Line  RIP   Bytes  Opcode                   
.target:                    #        0     0      OPC=<label>              
  xorps %xmm9, %xmm9        #  1     0     4      OPC=xorps_xmm_xmm        
  vcvttsd2sil %xmm9, %r15d  #  2     0x4   5      OPC=vcvttsd2sil_r32_xmm  
  subq %rbx, %r15           #  3     0x9   3      OPC=subq_r64_r64         
  cmovbeq %r15, %rbx        #  4     0xc   4      OPC=cmovbeq_r64_r64      
  retq                      #  5     0x10  1      OPC=retq                 
                                                                           
.size target, .-target
